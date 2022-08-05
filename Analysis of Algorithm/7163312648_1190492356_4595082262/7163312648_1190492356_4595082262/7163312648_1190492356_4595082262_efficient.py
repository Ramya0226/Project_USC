import os
import time
import sys
import psutil


class sequenceAlignment:
    # class initialization of gap_penalty, mismatch_penalty, strings
    def __init__(self):

        self.alpha_val = [[0, 110, 48, 94],
                          [110, 0, 118, 48],
                          [48, 118, 0, 110],
                          [94, 48, 110, 0]]
        self.delta_val = 30
        self.string1 = []
        self.string2 = []
        self.solution = []
        self.s1 = ""
        self.s2 = ""

    def assignString(self, s1, s2):
        self.s1 = s1
        self.s2 = s2

    # index retrieval function for mismatch lookup
    def get_alpha_index(self, string):
        if string == 'a' or string == 'A':
            return 0
        if string == 'c' or string == 'C':
            return 1
        if string == 'g' or string == 'G':
            return 2
        if string == 't' or string == 'T':
            return 3

    def seq_gen(self, seq, input_indexes):

        for i in input_indexes:
            x1 = seq[0:i + 1]
            x2 = seq
            x3 = seq[i + 1:len(seq)]
            seq = x1 + x2 + x3
        return seq

    def readFile(self, filename):
        input_str1 = []
        input_str2 = []
        input_indexes1 = []
        input_indexes2 = []
        line1 = []

        string1_comp = 0
        a_file = open(filename)

        # lines = a_file.readlines()
        for line in a_file:
            line1.append(line)

        for var in line1:
            var = var.replace('\n', '')
            if ('A' or 'T' or 'C' or 'G') in var:
                if len(input_str1) == 0:
                    input_str1 = var
                elif len(input_str2) == 0:
                    input_str2 = var
                    string1_comp = 1
            else:
                if string1_comp == 0:
                    input_indexes1.append(int(var))
                else:
                    input_indexes2.append(int(var))

        s1 = self.seq_gen(input_str1, input_indexes1)
        s2 = self.seq_gen(input_str2, input_indexes2)
        return s1, s2

    def align(self, OPT, len_seq1, len_seq2):

        alignment_done = 0

        while alignment_done == 0:

            if len_seq1 == 0 or len_seq2 == 0:
                if len_seq1 == 0 and len_seq2 == 0:
                    alignment_done = 1
                elif len_seq1 == 0:
                    self.string1.append("_")
                    self.string2.append(str(self.s2[len_seq2 - 1]))
                    len_seq2 -= 1
                elif len_seq2 == 0:
                    self.string1.append(str(self.s1[len_seq1 - 1]))
                    self.string2.append("_")
                    len_seq1 -= 1

            else:
                p = self.get_alpha_index(self.s1[len_seq1 - 1])  # index to retrieve alpha values
                q = self.get_alpha_index(self.s2[len_seq2 - 1])  # index to retrieve alpha values

                match = OPT[len_seq1 - 1][len_seq2 - 1] + self.alpha_val[p][q]
                Gap_Y = OPT[len_seq1 - 1][len_seq2] + self.delta_val
                Gap_X = OPT[len_seq1][len_seq2 - 1] + self.delta_val

                choice = min(match, Gap_Y, Gap_X)

                if choice == match:
                    self.string1.append(str(self.s1[len_seq1 - 1]))
                    self.string2.append(str(self.s2[len_seq2 - 1]))
                    len_seq1 -= 1
                    len_seq2 -= 1
                elif choice == Gap_Y:
                    self.string1.append(str(self.s1[len_seq1 - 1]))
                    self.string2.append("_")
                    len_seq1 -= 1
                elif choice == Gap_X:
                    self.string1.append("_")
                    self.string2.append(str(self.s2[len_seq2 - 1]))
                    len_seq2 -= 1

    # function to calculate the alignment score
    def alignment(self, seq1, seq2):

        len_seq1 = len(seq1)  # string seq1
        len_seq2 = len(seq2)  # string seq2

        OPT = [[0 for i in range(len_seq2 + 1)] for j in range(len_seq1 + 1)]

        for i in range(1, len_seq1 + 1):
            OPT[i][0] = self.delta_val * i
        for j in range(1, len_seq2 + 1):
            OPT[0][j] = self.delta_val * j

        for i in range(1, len_seq1 + 1):
            for j in range(1, len_seq2 + 1):
                p = self.get_alpha_index(seq1[i - 1])
                q = self.get_alpha_index(seq2[j - 1])
                OPT[i][j] = min(OPT[i - 1][j - 1] + self.alpha_val[p][q], OPT[i - 1][j] + self.delta_val,
                                OPT[i][j - 1] + self.delta_val)

        self.align(OPT, len(seq1), len(seq2))

        mystring1 = ''
        mystring2 = ''
        for s in self.string1:
            mystring1 += s
        for s in self.string2:
            mystring2 += s

        return mystring1[::-1], mystring2[::-1], OPT[len_seq1][len_seq2]

    def divideSplit(self, string1, string2, direction):

        lenString1 = len(string1) + 1
        lenString2 = len(string2) + 1
        matrixList = []

        # Creating m*n matrix with values 0
        for d1 in range(lenString1):
            l1 = []
            for d2 in range(lenString2):
                l1.append(0)
            matrixList.append(l1)

        # Running through matrix calculating the optimal score at each point row by row
        for d2 in range(lenString2):
            matrixList[0][d2] = self.delta_val * d2
        for d1 in range(1, lenString1):
            matrixList[d1][0] = matrixList[d1 - 1][0] + self.delta_val
            for d2 in range(1, lenString2):

                # Condition to check if we are comparing y-left with x or y-right with x based on which recurrence changes
                if direction == "LeftToRight":
                    x = d1 - 1
                    y = d2 - 1
                elif direction == "RightToLeft":
                    x = lenString1 - 1 - d1
                    y = lenString2 - 1 - d2

                # Recurrence relation
                matrixList[d1][d2] = min(
                    matrixList[d1 - 1][d2 - 1] + self.alpha_val[self.get_alpha_index(string1[x])][
                        self.get_alpha_index(string2[y])],
                    matrixList[d1 - 1][d2] + self.delta_val,
                    matrixList[d1][d2 - 1] + self.delta_val)

            # Clearing the previous row values before each iteration
            matrixList[d1 - 1] = []

        # print(sys.getsizeof(matrixList[lenString1 - 1]))
        # return the final row of values
        return matrixList[lenString1 - 1]

    def dAndC(self, string1, string2):

        # Calculate length of string1 and string2
        lenString1 = len(string1)
        lenString2 = len(string2)

        # Base condition if length of divide becomes lesser than 2
        if lenString1 < 2 or lenString2 < 2:
            # Everytime a base case is reached we clear the variables to be calculated
            self.string1 = []
            self.string2 = []
            self.solution = []
            self.assignString(string1, string2)
            return self.alignment(string1, string2)
        else:
            first = self.divideSplit(string1[:int(lenString1 / 2)], string2, "LeftToRight")
            last = self.divideSplit(string1[int(lenString1 / 2):], string2, "RightToLeft")

            # A List called score to keep track of scores or cost at each split points
            scores = []
            for d2 in range(lenString2 + 1):
                scores.append(first[d2] + last[lenString2 - d2])

            # Calculating optimal split point from associated costs and store the index of cut
            minScoreValue = 1000000
            minIndex = 0
            for d in range(len(scores)):
                if scores[d] < minScoreValue:
                    minScoreValue = scores[d]
                    minIndex = d
            # print(scores.count(maxScoreValue))

            first = []
            last = []
            scores = []

            # Calling D&C on left split and right split recursively
            leftSplit = self.dAndC(string1[:int(lenString1 / 2)], string2[:minIndex])
            rightSplit = self.dAndC(string1[int(lenString1 / 2):], string2[minIndex:])

            # Now return result in format: [1st alignment, 2nd alignment, similarity]
            return [leftSplit[r] + rightSplit[r] for r in range(3)]

    def write_output(self, filename, string1, string2, score, time_taken, memory):
        with open(filename, 'w') as f:
            f.write(f'{str(string1[:50])} {str(string1[-50:])}\n')
            f.write(f'{str(string2[:50])} {str(string2[-50:])}\n')
            f.write("{:.1f}".format(score))
            f.write('\n')
            f.write(f'{str(memory)}\n')
            f.write(f'{str(time_taken)}')
            

if __name__ == '__main__':
    start_time = time.time()
    input_file = sys.argv[1]

    seq1 = sequenceAlignment()
    seqString1, seqString2 = seq1.readFile(input_file)
    seq1.assignString(seqString1, seqString2)
    aligned_dna_seq1, aligned_dna_seq2, alignment_cost = seq1.dAndC(seqString1, seqString2)

    time_taken = round(time.time() - start_time, 3)
    memory = psutil.Process(os.getpid()).memory_info().rss / 1024
    seq1.write_output("output.txt", aligned_dna_seq1, aligned_dna_seq2, alignment_cost, time_taken, memory)

class Gene:

    def __init__(self, id, name, strand, chr, start_pos, end_pos):
        self._strand = strand
        self._chr = chr
        self._start_pos = start_pos
        self._end_pos = end_pos
        self._id = id
        self._name = name

    def get_chr(self):
        return self._chr

    def get_id(self):
        return self._id

    def get_name(self):
        return self._name

    def get_start_pos(self):
        return self._start_pos

    def get_end_pos(self):
        return self._end_pos

    def get_strand(self):
        return self._strand


    @staticmethod
    def from_gff(line):
        fields = line.split("\t")
        if len(fields) < 9:
            return None
        chr = fields[0]
        start_pos = int(fields[3])
        end_pos = int(fields[4])
        strand = fields[6]

        extra_fields = fields[8].split(';')
        infos = {i.split('=')[0]:i.split('=')[1] for i in fields[8].split(';')}
        if not 'gene_id' in infos or not 'Name' in infos:
            return None
        
        id = infos['gene_id']
        name = infos['Name']

        return Gene(id, name, strand, chr, start_pos, end_pos)

    def __len__(self):
        '''
        >>> len(Gene("100", "FLT3", -1, "15", 100, 200))
        101
        >>> len(Gene("100", "FLT3", 1, "15", 100, 200))
        101
        '''
        return self._end_pos - self._start_pos + 1

    def __repr__(self):
        return str(self)
    
    def __str__(self):
        '''
        >>> Gene("100", "FLT3", -1, "15", 10234, 11543)
        FLT3 (ID: 100) -- Chr 15 10234--11543 (strand -1)
        '''
        return '{} (ID: {}) -- Chr {} {}--{} (strand {})'.format(self.get_name(),self.get_id(),
                                                                 self.get_chr(), self.get_start_pos(),
                                                                 self.get_end_pos(), self.get_strand())

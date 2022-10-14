from list import *

class ExtendedList(List):

    def length (self):
        """
        Return the length of a list

        :return: Number of elements in the list

        >>> l = ExtendedList()
        >>> l.length()
        0
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l.length()
        3
        """
        if self.is_empty():
            return 0
        else:
            cpt = 1
            tail = self.tail()
            while not tail.is_empty():
                cpt += 1
                tail = tail.tail()
            return cpt


    def get(self,i):
        '''
        Get the element at position i (positions start at 0).

        :CU: not self.is_empty()

        >>> l = ExtendedList(1, ExtendedList())
        >>> l.get(0)
        1
        >>> l = ExtendedList(4, ExtendedList())
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l.get(3)
        4
        >>> l.get(0)
        1
        '''
        if not 0 <= i < self.length():
            raise ListError('list index out of range')
        if self.is_empty():
            raise ListError('empty list has no element')
        elif i == 0:
            return self.head()
        else:
            tail = self.tail()
            for _ in range(1,i):
                tail = tail.tail()
            return tail.head()


    def search (self, e):
        """
        Return whether e exists in the list

        :return: True iff e is an element of the list

        >>> l = ExtendedList()
        >>> l.search(0)
        False
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l.search(1)
        True
        >>> l.search(3)
        True
        >>> l.search(4)
        False
        """
        if self.is_empty():
            return False
        if e == self.head():
            return True
        else:
            tail = self.tail()
            while not tail.is_empty():
                if e == tail.head():
                    return True
                tail = tail.tail()
            return False


    def toString (self):
        """
        Return a string representation of the list

        >>> l = ExtendedList()
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l.toString()
        '1 2 3'
        >>> len(l.toString())
        5
        """
        if self.is_empty():
            return ''
        else:
            res = str(self.head())
            tail = self.tail()
            while not tail.is_empty():
                res += ' '+str(tail.head())
                tail = tail.tail()
            return res


    def toPythonList (self):
        """
        Return the Python list corresponding to the list

        :return: A Python list whose length and elements are identical to `self`.

        >>> l = ExtendedList()
        >>> l.toPythonList()
        []
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l.toPythonList()
        [1, 2, 3]
        >>> len(l.toPythonList())
        3
        """
        return [self.get(i) for i in range(self.length())]


    def __str__(self):
        return str(self.toPythonList())


    def __getitem__(self, i):
        """
        :param i:
        :return:

        >>> l = ExtendedList()
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> l[0]
        1
        >>> l[2]
        3
        """
        return self.get(i)


    def __len__(self):
        """
        :return:

        >>> l = ExtendedList()
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        >>> len(l)
        3
        """
        return self.length()

    def __iter__(self):
        """
        Implantation très sommaire d'un itérateur. Ne permet pas d'itérer
        sur la même liste dans une boucle imbriquée.

        >>> l = ExtendedList()
        >>> l = ExtendedList(3,l)
        >>> l = ExtendedList(2,l)
        >>> l = ExtendedList(1,l)
        """
        self.__iter = self
        return self


    def __next__(self):
        try:
            v = self.__iter.head()
            self.__iter = self.__iter.tail()
            return v
        # On utilise la variable self.__iter (qui correspond à la liste qu'on itère)
        # Il s'agit de renvoyer la valeur de la tête de cette liste et de modifier
        # self.__iter pour qu'elle corresponde maintenant au reste de la liste
        # (afin d'avancer dans celle-ci).
        # Attention à l'ordre dans lequel vous faites les opérations.
        except:
            raise StopIteration


if __name__ == "__main__":
    import doctest
    doctest.testmod(optionflags=doctest.NORMALIZE_WHITESPACE | doctest.ELLIPSIS, verbose=True)


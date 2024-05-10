class Node:
    __slots__ = ('label', 'value')
    def __init__(self, label, value=None):
        self.label = str(label)
        self.value = value if type(value) != type(None) else self
    
    def __call__(self):
        if hasattr(self.value, '__iter__'):
            tmp = '{' + ', '.join(map(str,self.value))+ '}'
            return f"{self.label} : {tmp}"
            
        return f"{self.label} : {self.value}"
        
    def __str__(self):
        return str(self.label)
    
    def __format__(self, format_spec):
        return str(self.label)
    
    def __len__(self):
        return len(self.label)
    
    def __hash__(self):
        return hash(self.label)
        
    def __eq__(self, other):
        if isinstance(other, Node):
            return self.label == other.label
        raise TypeError(f"Cannot compare Node with {type(other)}")
    
class Edge:
    __slots__ = ('src', 'dst', 'label', 'cost', 'toll')
    def __init__(self, src, dst, label, cost=0, toll=False):
        self.src = src
        self.dst = dst
        self.cost = cost
        self.toll = toll
        self.label = str(label)
    
    
    def copy(self):
        return Edge(self.src, self.dst, self.label, self.cost, self.toll)
        
    def __hash__(self):
        return hash((self.src, self.dst, self.label, self.cost, self.toll))
    
    def __call__(self):
        if hasattr(self.src, '__iter__'):
            tmp_src = '{' + ', '.join(map(str, self.src))+ '}'
        else:
            tmp_src = self.src
            
        if hasattr(self.dst, '__iter__'):
            tmp_dst = '{' + ', '.join(map(str, self.dst))+ '}'
        else:
            tmp_dst = self.dst
            
        return f"{self.label} : {tmp_src} --> {tmp_dst}"
    
    def __len__(self):
        return len(str(self))
        
    def __format__(self, format_spec):
        return str(self.label)
        
    def __str__(self):
        return str(self.label)
        
    def __eq__(self, other):
        if isinstance(other, Edge):
            return (self.src, self.dst, self.label, self.cost, self.toll) == (other.src, other.dst, other.label, other.cost, other.toll)
        raise TypeError(f"Cannot compare Edge with {type(other)}")


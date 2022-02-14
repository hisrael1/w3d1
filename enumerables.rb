class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
        self
    end

#p [1, 2, 3].my_each { |ele| p ele}

    def my_select(&prc)
        final_array = []
        self.my_each { |ele| final_array << ele if prc.call(ele)}
        return final_array
    end

end

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]





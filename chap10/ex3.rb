def dictionary_sort arr
    rec_dict_sort arr, []
end
def rec_dict_sort unsorted, sorted
    if unsorted.length <= 0
        return sorted
    end
    smallest = unsorted.pop
    still_unsorted = []

    unsorted.each do |test_el|
        if test_el.downcase < smallest.downcase
            still_unsorted << smallest
            smallest = test_el
        else
            still_unsorted << test_el
        end
    end
    sorted << smallest
    rec_dict_sort still_unsorted, sorted
end

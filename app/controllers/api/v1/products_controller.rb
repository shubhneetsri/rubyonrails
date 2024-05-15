class Api::V1::ProductsController < ApplicationController

  include TestConcern

  def initialize
    @todos = []
  end

  def show
   all = Product.all 
   find = Product.find(1)
   findby = Product.find_by(brand: 'ROR')
   render json:[all,find,findby] 
  end

  def hash_example
    hash_var = {interests: ['singing', 'dancing'], tech_skills: ['Ruby', 'C++']} # Hash[], {}
    hash_obj = OpenStruct.new(hash_var)
    hash_json = hash_var.to_json # JSON.generate({:make => "bmw", :year => "2003"})
    
    render json: [hash_json,hash_obj,hash_var]
  end

  def lam_proc_example
    lamb_da = -> (s) { return "Hello "+ s }
    lamb_da_val = lamb_da.call("Geeks")

    proc_al = Proc.new {|s| s + 1}
    proc_al_val = proc_al.call(1,2,3)

    render json: [proc_al_val,lamb_da_val]
  end

  def vowles

    work = add_todo('commit')
    work = add_todo('PR')
    work = add_todo('Merge')

    puts work

    puts 100.downto(90).select{|x| x%2 == 0}

    x = [1,2,3,4,5,6,7,8]
    y=x
    x.reject!{|x| x > 5}

    lamb_da = -> (s) { return "Hello "+ s }
    lamb_da_val = lamb_da.call("Geeks")

    proc_al = Proc.new {|s| s + 1}
    proc_al_val = proc_al.call(1,2,3)

    string ="A man is Old enough."
    arr = []
    vowels = %w(a e i o u)
    vowels.each do |x|
        if string.each_char { |letter| (arr << x) if x == letter }
      end
    end
    output = "#{arr} has #{arr.count} vowels"
    render json: [work,x,y,vowels,output]
  end

  def fibonacci

    series_len = 10

    first_num = 0
    second_num = 1
    nextterm = 1

    arr = [0,1]
    index = 3

    for index in 0..series_len do
      arr << nextterm
      first_num = second_num
      second_num = nextterm
      nextterm = first_num + second_num
    end

    render json: [arr]

  end

  

  def missing_num
    orignal_arr = [2,5,6,9,0]
    
    sorted_array = orignal_arr.sort
    max_arr_ele = sorted_array.max
    min_arr_ele = sorted_array.min

    orignal_arr_index = 0
    min_loop_index = min_arr_ele
    missing_numbers_output = []

    while min_loop_index <= max_arr_ele
      if sorted_array[orignal_arr_index]
        if sorted_array[orignal_arr_index] != i
          missing_numbers_output << i
        else
          orignal_arr_index = orignal_arr_index + 1
        end
      end
      min_loop_index = min_loop_index + 1
    end

    render json: [orignal_arr,sorted_array,missing_numbers_output]
  end

  def string_test
    begin
      strval = "012345Hello".insert(3, "hi5").upcase.chop.split('H')
      strconvert = "012345Hello".to_i
      strreplace = "ruby is cool cool".gsub("cool", "very Good")
      strconcat = (("15" + "16") << '17').concat '18'
      str = "Amazon\r\n"
      strchomp = str.chomp
      strinterpolation = "Description : #{strreplace}!"
      strescape = %{Sammy says, "I'm a happy shark!"}
      render json: [strval,strconvert,strreplace,strconcat,strchomp,strinterpolation,strescape]
    rescue
      render json: ['Uh oh!']
    end
  end

  def create
    object = Product.new(:name => "Ruby", :brand => 'ROR', :price => 100, :desc => 'This is coding language.')
    object.save
    render json: [object]
  end

  def test
    print "Hey"
      puts "Everyone!"
      print "We are learning Ruby"
    name = TestCreator.generate
    concern_object = @iaminstanceobject
    data = self.concern_call
    concern_object2 = @iaminstanceobject
    array = [1,2,3,4]
    arnum = array.filter{ |num| num.even?}
    render json: [arnum,name,concern_object,data,]
  end
end

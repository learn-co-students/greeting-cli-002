require_relative "../lib/greeting.rb"



  context '#greeting' do
    it 'takes in an argument of a persons name' do
      allow($stdout).to receive(:puts)
      
      expect{greeting("Bobby")}.to_not raise_error
    end

    it 'greets the person whose name was passed in as an argument' do
      allow($stdout).to receive(:puts)

      output = capture_puts{ greeting("Sally") }

      expect(output).to include("Hello Sally. It's nice to meet you.")
    end
  end


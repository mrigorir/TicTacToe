require 'rspec'
require './lib/logic'
require './lib/modules'

RSpec.describe TicTacToe do
  let(:game) { TicTacToe.new }

  describe '#taken?' do
    context 'position on the board already taken?' do
      it 'returns true' do
        expect(game.taken?(1, [1, 2, 4])).to be true
      end
    end

    context 'position has not been taken?' do
      it 'returns false if position\'s not taken' do
        expect(game.taken?(5, [1, 7, 8, 9])).to be false
      end
    end

    context 'board empty?' do
      it 'returns false' do
        expect(game.taken?(3, [])).to be false
      end
    end

    context 'position empty?' do
      it 'returns false' do
        expect(game.taken?('', [])).to be false
      end
    end
  end

  describe '#analize_input?' do
    context 'analize the user input (string given) to be a number and between 1 and 9' do
      it 'returns true' do
        expect(game.analize_input?('5')).to be true
      end
    end

    context 'user input is a char string? then' do
      it 'returns false' do
        expect(game.analize_input?('qweqwe')).to be false
      end
    end

    context 'user input is greater than 9? then' do
      it 'returns false' do
        expect(game.analize_input?('120')).to be false
      end
    end

    context 'user input is 0? then' do
      it 'returns false' do
        expect(game.analize_input?('0')).to be false
      end
    end

    context 'user input lower than 1? then' do
      it 'returns false' do
        expect(game.analize_input?('-90')).to be false
      end
    end

    context 'user input is another kind of value? then' do
      it 'returns false' do
        expect(game.analize_input?(167)).to be false
      end
    end
  end

  describe '#pseudo_empty?' do
    context 'user input (playername) is empty?' do
      it 'returns true' do
        expect(game.pseudo_empty?('')).to be true
      end
    end

    context 'playername exists' do
      it 'returns false' do
        expect(game.pseudo_empty?('Marco')).to be false
      end
    end
  end

  describe '#arbiter' do
    context 'checks for a winner' do
      it 'returns false if one of the players is identified as winner' do
        expect(game.arbiter(3, 'X', 'Marco', [[1, 5, 9], ['X', 'X', 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])).to be false
      end
    end

    context 'checks for a TIE' do
      it 'returns empty if none of the players wins' do
        expect(game.arbiter(7, 'O', 'Anvi', [[1, 5, 9], [1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])).to eql('')
      end
    end
  end
end

describe GameMethods do
  context 'check the input matches the RegExp pattern, then' do
    it 'returns false' do
      expect(GameMethods.check_input('Marco')).to eql(4)
    end
  end

  context 'if the input does not matches the patter, then' do
    it 'returns false' do
      expect(GameMethods.check_input('Alex')).to be false
    end
  end
end

class RpsController < ApplicationController
  def home
    render({:template => "game_templates/homepage"})
  end

  def rock
      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.sample
      if @comp_move == "rock"
        @outcome = "We tied"
      elsif @comp_move == "scissors"
        @outcome =  "We won"
      elsif @comp_move == "paper"
        @outcome = "We lost"
      end

      render({:template => "game_templates/play_rock"})
    end

    def paper
      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.sample
      if @comp_move == "rock"
        @outcome = "We won"
      elsif @comp_move == "scissors"
        @outcome =  "We lost"
      elsif @comp_move == "paper"
        @outcome = "We tied"
      end

      render({:template => "game_templates/play_paper"})
    end

    def scissors
      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.sample
      if @comp_move == "rock"
        @outcome = "We lost"
      elsif @comp_move == "scissors"
        @outcome =  "We tied"
      elsif @comp_move == "paper"
        @outcome = "We won"
      end

      render({:template => "game_templates/play_scissors"})
    end
  end

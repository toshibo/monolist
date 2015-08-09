class RankingController < ApplicationController
    
    def have
        @have_ranking_hash = Have.group(:item_id).limit(10).order('count_item_id desc').count(:item_id)
    end

    def want
        @want_ranking_hash = Want.group(:item_id).limit(10).order('count_item_id desc').count(:item_id)
    end
end

module Resolvers
  class PrefecturesResolver < Resolvers::BaseResolver
    description '都道府県一覧'
    type [Types::PrefectureType], null: false

    def resolve
      Prefecture.all
    end
  end
end

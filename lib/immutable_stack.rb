require "immutable_stack/version"
require 'test/unit'

module ImmutableStack
	class ImmutableStack
		@list = []
		@temporal_list = []

		attr_accessor :list,:temporal_list

		def initialize(list)
			self.list = list
			self.temporal_list = list.dup
			self.list.freeze
		end

		def pop()
			self.temporal_list.pop()
		end

		def push(value)
			self.temporal_list.push(value)
		end

	end
end

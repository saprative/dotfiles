return {
    "terrortylor/nvim-comment",
    opts = {
        line_mapping = "<leader>c ", 
        operator_mapping = "<leader>c", 
        comment_chunk_text_object = "ic"
    },
    config = function(_, opts)
        require("nvim_comment").setup(opts)
    end,
}
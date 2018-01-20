class BooksController < ApplicationController
    #index -> menampilkan semua data buku
    #http method get
    def index
        @books = Book.all
    end
    #show -> menampilkan 1 data buku
    #http method get
    def show
        @book = Book.find(params[:id])
    end

    #new -> menampilkan form jika ingin membuat buku baru
    #http method get
    def new
        @title = 'Manajemen Pembukuan'
        @book = Book.new
    end

    #create -> action utk menangkap action data yg dikirim dari new kemudian diolah
    #http method post
    def create
        #render plain: params.inspect
        book = Book.new(resource_params)
        book.save
        render plain: 'sukses menambah buku'
    end

    def edit
        @book = Book.find(params[:id])    
    end

    def update
        @book = Book.find(params[:id])
        @book.update(resource_params)
        # @book.title = params[:book][:title]
        render plain: 'sukses mengupdate data buku'
    end

    private

    def resource_params
        params.require(:book).permit(:title, :page, :description)
    end
    
    #edit -> menampilkan form utk edit data
    #http method get

    #update -> memproses nilai yg dimasukkan dari form edit
    #http method patch/put    

    #destroy -> menghapus sebuah resource
    #http method delete
    
end
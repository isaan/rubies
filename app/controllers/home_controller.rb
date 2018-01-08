 class HomeController < ApplicationController
    def beranda
        #render plain: 'Hallo ini adalah halaman home'
        @motor = ['honda', 'yamaha', 'suzuki', 'kawasaki', 'ktm', 'bmw']
        @merk = 'Nama merk motor di Indonesia'

        @books = Book.all
    end

    def about
        #render plain: 'Hallo ini adalah halaman about'
        id = params[:id]
        book = Book.find_by id: id
        if book
            @title = book.title
        else
            @title = 'buku tidak ditemukan'
        end
    end
 end
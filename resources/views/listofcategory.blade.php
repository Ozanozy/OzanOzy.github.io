<html>
<head></head>
@foreach($listeleulann as $listeleulan)
    <title>{{$listeleulan->category_name}} </title>
    <hr>
    <a href="/Post/{{ $listeleulan->slug}}" class="ressss"><img height="150" width="450" src="/storage/{{ $listeleulan->image}}"></a>&nbsp;<hr>
    {{$listeleulan->title}} kategorisi {{$listeleulan->category_id}}
    <hr>
    @endforeach
    </body>
</html>
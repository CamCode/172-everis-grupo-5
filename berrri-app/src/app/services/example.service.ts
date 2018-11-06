import { Injectable } from '@angular/core';
import {Observable, of, throwError} from 'rxjs';
import {HttpClient, HttpHeaders, HttpErrorResponse} from '@angular/common/http';
import {catchError, tap, map} from 'rxjs/operators'

const httpOptions ={
  headers: new HttpHeaders({'Content-Type': 'application/x-www-form-urlencoded','method': 'GET','Access-Control-Allow-Origin':'*'})
}

const apiUrl = 'http://berrri-back-dev.herokuapp.com/api/v1/consultarusomotivos'


@Injectable({
  providedIn: 'root'
})
export class ExampleService {

  constructor( private http: HttpClient) { }

  get():Observable<any>{
      return this.http.get(`${apiUrl}`, httpOptions)
      .pipe(
      	  map(this.extractData),
      	  catchError(this.handleError)
      	)

  }

  private extractData(res: Response){
  	let body =  res;
  	return body || {};
  }

  private handleError(error: HttpErrorResponse){


  	console.log(error)
    return throwError("algo salio mal")

  }


}

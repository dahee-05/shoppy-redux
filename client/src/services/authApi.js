import { setIsLoggedIn, setIsLogout } from "../features/auth/authSlice.js";
import { axiosPost } from "./api.js";

export const getLogin = (formData) => async(dispatch) =>{
    const url = `http://localhost:9000/member/login`;
    const data = formData;
    
    const loginResult = await axiosPost({url, data});
    const result_rows = loginResult.result_rows;

    if(result_rows){
        localStorage.setItem("token", loginResult.token);
        localStorage.setItem("user_id", formData.id);                        
        dispatch(setIsLoggedIn({result_rows})); // 리듀서(슬라이스)의 함수 호출 
    }
};


export const getLogout = () => (dispatch) =>{
    localStorage.removeItem("token");
    localStorage.removeItem("user_id");
    dispatch(setIsLogout(false));
};
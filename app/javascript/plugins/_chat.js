const refresh = () => {

}


const scrollDown = () => {
  const scroll = document.querySelector('.chat-scroll');
  scroll.scrollTop = scroll.scrollHeight;
}
const chat = () => {

  const form = document.querySelector('.test')
  form.addEventListener('submit', (event) => {
    const content = document.querySelector("input[name='message[content]']");
    const myMessage = content.value;
    const myList = document.querySelector('#myself')
    const currentUser = document.querySelector('.chosen-user')
    const myself = currentUser.innerText;
    myList.insertAdjacentHTML('beforeend',
    `<div class="chatbox__messages__user-message--ind-message">
        <p class='name'>${myself}</p>
        <br>
        <p class="message">${myMessage}</p>
      </div>`
    )
    scrollDown();
    clean();
  })
}

const clean = () => {
  const form = document.querySelector('.test');
  const content = document.querySelector("input[name='message[content]']");
  content.addEventListener('keyup', (event) => {
    if (event.keyCode === 13) {
      content.value = "";
    }
  });
}
// const active = () => {
//   const icone = document.querySelector()
// }


export { chat, scrollDown };

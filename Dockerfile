FROM Zainiprince11/PrinceBot:public

RUN git clone https://github.com/Zainiprince11/PrinceBot.git /root/PrinceBot
WORKDIR /root/PrinceBot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]

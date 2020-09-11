import poplib,email
from email.parser import parser
from email.header import decode_header
from email.utils import parseaddr

def guess_charset(msg):
    charset = msg.get_charset()
    if charset is None:
        content_type = msg.get('Content-Type','').lower()
        if 'charset' in content_type:
            charset = content_type.split('charset=')[1].strip()
            return charset
    return charset

def decode_str(s):
    value, charset = decode_header(s)[0]
    if charset:
        value = value.decode(charset)
    return value                

def print_info(msg,indent=0)
    if  indent ==0:
        for header in ['From','To','Subject']:
            value = msg.get(header,'')
            if value:
                if header=='Subject':
                    value = decode_str(value)
                else:
                    hdr,addr = parseaddr(value)
                    name = decode_str(hdr)
                    value = '%s' % (addr)        
            print '%s:%s'%(header,value)
    if (msg.is_multipart()):
        parts = msg.get_payload()
        for n,part in enumerate(parts):
            print_info(part,indent +1)
    else:
        content_type = msg.get_content_type()
        if content_type=='text/plain' or content_type=='text/html':
            content = msg.get_payload(decode=True)
            charset = guess_charset(msg)
            if charset:content= content.decode(charset)
            content = '%s' % (charset)
            print content    
        else:
            print 'メールの内容は文字以外も含まれています。'    
server = poplib.POP3('')
email = ''
password = ''                                
server.user('')
server.password('')        

resp, mails, octets = server.list()

lenString = len(mails)
resp, mailContents, octets = server.retr(lenString)

msg = Parser().parsestr('\r\n'.join(mailContent))

print_info(msg)

server.quit()
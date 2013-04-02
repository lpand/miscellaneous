# phenny module italiansubs
import re
import web

r_tr_state = re.compile(r'"style[0-9]">\s*([0-9]+%|in\s*(traduzione|revisione))')
url	= 'http://www.italiansubs.net/index.php?option=com_barreavanzamento&Itemid=36'

def subs(phenny, input):
	arg = input.group(2)
	if not arg: 
		return phenny.reply("Dimmi il nome della serie tv")
	
	arg = arg.strip().lower()

	if isinstance(arg, unicode):
		arg = arg.encode('utf-8')

	page = web.get(url).lower()
	if page is None:
		return phenny.reply("Something bad happend")

	index = page.find('nomeserie=%s"' % arg)
	if index < 0: 
		return phenny.reply("Nessun episodio in traduzione o revisione")

	responce = r_tr_state.search(page, index).group(1)
	if responce is None: 
		subs_reply = "Impossibile rivelare stato traduzione"
	else:
		subs_reply = "Stato attuale - "+ responce
	return phenny.reply(subs_reply)

subs.commands = ['sub', 'itasubs', 'itsubs']
subs.thread = True

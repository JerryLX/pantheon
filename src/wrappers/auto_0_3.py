#!/usr/bin/env python

from os import path
from subprocess import check_call

import arg_parser
import context


def main():
    args = arg_parser.receiver_first()

    cc_repo = path.join(context.third_party_dir, 'autocc')
    send_src = path.join(cc_repo, 'pccclient')
    recv_src = path.join(cc_repo, 'pccserver')

    if args.option == 'setup':
        check_call(['sudo pip install gym'], shell=True)
        return

    if args.option == 'sender':
        cmd = [send_src, args.port, "--preference=0.3"]
        check_call(cmd)
        return

    if args.option == 'receiver':
	check_call([''])
        cmd = [recv_src, args.ip, args.port]
        print (cmd)
        check_call(cmd)
        return


if __name__ == '__main__':
    main()

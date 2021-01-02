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
        # cmd = ['''export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lixu/PCC-Uspace/src/core/''']
        # check_call(cmd)
        cmd = [send_src, "send", args.ip, args.port, "--pcc-rate-control=python -pyhelper=loaded\_client -pypath=/home/lixu/PCC-RL/src/udt-plugins/auto_testing/ --history-len=10 --pcc-utility-calc=linear --model-path=/home/lixu/PCC-RL/src/udt-plugins/auto_testing/autoxxxxpb/ --preference=0.2"]
        print (cmd)
        check_call(cmd)
        return

    if args.option == 'receiver':
        # cmd = ['''export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lixu/PCC-Uspace/src/core/''']
        # check_call(cmd)
        cmd = [recv_src, "recv", args.port]
        print (cmd)
        check_call(cmd)
        return


if __name__ == '__main__':
    main()

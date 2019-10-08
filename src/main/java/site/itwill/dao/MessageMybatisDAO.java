package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;
import site.itwill.mapper.MessageMapper;

@Repository
public class MessageMybatisDAO implements MessageDAO {

	@Autowired
	private SqlSession SqlSession;
	
	//������������
	@Override
	public int sendMsg(MessageDTO msg) {
		return SqlSession.getMapper(MessageMapper.class).sendMsg(msg);
	}
	
	//�����Ͽ��� ������ ��� ã�� ���
	@Override
	public int searchAddress() {
		return SqlSession.getMapper(MessageMapper.class).searchAddress();
	}

	//����������
	@Override
	public List<MessageDTO> recvMsgBox(int logNo) {
		// TODO Auto-generated method stub
		return SqlSession.getMapper(MessageMapper.class).recvMsgBox(logNo);
	}

	//����������
	@Override
	public List<MessageDTO> sendMsgBox(int logNo) {
		// TODO Auto-generated method stub
		return SqlSession.getMapper(MessageMapper.class).sendMsgBox(logNo);
	}

	//����������
	@Override
	public List<MessageDTO> myMsgBox(int logNo) {
		return SqlSession.getMapper(MessageMapper.class).myMsgBox(logNo);
	}


	//���������԰���
	@Override
	public int countRecvMsg(int empNo) {
		return SqlSession.getMapper(MessageMapper.class).countRecvMsg(empNo);
	}

	//���������԰���
	@Override
	public int countSendMsg(MessageDTO sendMsg) {
		return SqlSession.getMapper(MessageMapper.class).countSendMsg(sendMsg);
	}

	//���������԰���
	@Override
	public int countMyMsgBox(MessageDTO myMsg) {
		return SqlSession.getMapper(MessageMapper.class).countMyMsgBox(myMsg);
	}

	//��ü�˻�
	@Override
	public List<MessageDTO> allSearchMsg() {
		return SqlSession.getMapper(MessageMapper.class).allSearchMsg();
	}

	//Ű���� �˻�
	@Override
	public int selectSendMsgTotal(Map<String, Object> map) {
		return SqlSession.getMapper(MessageMapper.class).selectSendMsgTotal(map);
	}


	//���� ������ �Ǵ� ���� �����Կ��� ���� ���������� �̵��ϱ�
	@Override
	public int moveMsgBox(List<Integer> list) {
		return SqlSession.getMapper(MessageMapper.class).moveMsgBox(list);
	}

	//�ּҷϿ��� ������ ��� ����
	@Override
	public MessageDTO selectAddress(List<Integer> empNo) {
		return SqlSession.getMapper(MessageMapper.class).selectAddress(empNo);
	}

	//���� ����
	@Override
	public int deleteMsg(List<Integer> list) {
		return SqlSession.getMapper(MessageMapper.class).deleteMsg(list);
	}

	//��������Ȯ��
	@Override
	public MessageDTO recvMsgView(int msgNo) {
		return SqlSession.getMapper(MessageMapper.class).recvMsgView(msgNo);
	}

	//��������Ȯ��
	@Override
	public MessageDTO sendMsgView(int msgNo) {
		return SqlSession.getMapper(MessageMapper.class).sendMsgView(msgNo);
	}

	//��������������¡ó��
	@Override
	public List<MessageDTO> PageSendMsg(Map<String, Object> map) {
		return SqlSession.getMapper(MessageMapper.class).PageSendMsg(map);
	}

	// ���忡�� ������ ��� ����
	@Override
	public int replyMessageList(List<Integer> num) {
		return SqlSession.getMapper(MessageMapper.class).replyMessageList(num);
	}


	
	

	
	

	

	

}
package cn.tarena.ht.auto;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.StatefulJob;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

public abstract class AbstractAutoJob extends QuartzJobBean implements StatefulJob {
    private static Logger Log = LoggerFactory.getLogger(AbstractAutoJob.class);

    /**
     * job执行结果
     */
    public class JobInvokeResult {
        //默认值为成功
        public String status = "0";
        public String err = "";
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
        //        Log.info("Log.deBug.执行文件:" + context.getTrigger().toString());
        JobInvokeResult result = executeJob();
        if (result.err != "") {
            Log.info("Log.error:" + result.err);
        }
    }

    public abstract JobInvokeResult executeJob();

    protected JobInvokeResult setError(Exception e) {
        JobInvokeResult result = new JobInvokeResult();
        result.status = "1";
        result.err = e.getMessage();
        return result;
    }
}

.class public final Lcom/xuexiang/xtask/XTask;
.super Ljava/lang/Object;
.source "XTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 405
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAllTaskChain()V
    .locals 0

    .line 282
    invoke-static {}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->cancelAll()V

    .line 283
    return-void
.end method

.method public static cancelTaskChain(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->cancel(Ljava/util/Collection;)V

    .line 276
    return-void
.end method

.method public static varargs cancelTaskChain([Ljava/lang/String;)V
    .locals 0
    .param p0, "names"    # [Ljava/lang/String;

    .line 265
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->cancel([Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static cancelTaskChain(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 256
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->cancel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearTaskChain(Z)V
    .locals 0
    .param p0, "ifNeedCancel"    # Z

    .line 291
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->clear(Z)V

    .line 292
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->debug(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static debug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .line 58
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->debug(Z)V

    .line 59
    return-void
.end method

.method public static emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 385
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static getConcurrentGroupTask()Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1

    .line 184
    invoke-static {}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->get()Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getConcurrentGroupTask(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1
    .param p0, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 204
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->get(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getConcurrentGroupTask(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 194
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->get(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialGroupTask()Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1

    .line 215
    invoke-static {}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->get()Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialGroupTask(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1
    .param p0, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 235
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->get(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialGroupTask(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 225
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->get(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 118
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 140
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 163
    invoke-static {p0, p1, p2}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 151
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Z)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "isAutoNotify"    # Z

    .line 129
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Z)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskBuilder(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 1
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 173
    invoke-static {p0}, Lcom/xuexiang/xtask/api/step/XTaskStep;->newBuilder(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskChain()Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 1

    .line 96
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-direct {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;-><init>()V

    return-object v0
.end method

.method public static getTaskChain(Ljava/lang/String;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 426
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 415
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static postToMain(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 364
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->postToMain(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 375
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 440
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 453
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 466
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static setCancellerPool(Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;)V
    .locals 0
    .param p0, "cancellerPool"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    .line 246
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->setCancellerPool(Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;)V

    .line 247
    return-void
.end method

.method public static setCategoryExecutorCore(Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;)V
    .locals 1
    .param p0, "categoryExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    .line 311
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->setCategoryExecutorCore(Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;

    .line 312
    return-void
.end method

.method public static setIsLogThreadName(Z)V
    .locals 0
    .param p0, "isLogThreadName"    # Z

    .line 85
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setIsLogThreadName(Z)V

    .line 86
    return-void
.end method

.method public static setLogger(Lcom/xuexiang/xtask/logger/ILogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xuexiang/xtask/logger/ILogger;

    .line 76
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setLogger(Lcom/xuexiang/xtask/logger/ILogger;)V

    .line 77
    return-void
.end method

.method public static setPriorityExecutorCore(Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;)V
    .locals 1
    .param p0, "priorityExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    .line 302
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->setPriorityExecutorCore(Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;

    .line 303
    return-void
.end method

.method public static setScheduledExecutorCore(Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;)V
    .locals 1
    .param p0, "scheduledExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    .line 320
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->setScheduledExecutorCore(Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;

    .line 321
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->shutdown()V

    .line 328
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 395
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "priority"    # I

    .line 340
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public static submit(Ljava/lang/String;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 352
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->submit(Ljava/lang/String;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

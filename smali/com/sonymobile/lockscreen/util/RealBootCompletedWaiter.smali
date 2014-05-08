.class public Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;
.super Ljava/lang/Object;
.source "RealBootCompletedWaiter.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;


# static fields
.field private static final DEBUG:Z

.field static final sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private isSystemBootCompleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 120
    sget-object v1, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :goto_0
    return v0

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.lockscreen.DUMMY_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    sget-object v0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    sget-object v0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public waitForBootCompleted(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 64
    sget-object v3, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->sSystemBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    :goto_0
    return v2

    .line 67
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 68
    .local v0, "bootCompletedLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;-><init>(Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;Ljava/util/concurrent/CountDownLatch;)V

    .line 79
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v3, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->isSystemBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 110
    .local v2, "successFullyWaitedForBoot":Z
    :goto_2
    goto :goto_0

    .line 96
    .end local v2    # "successFullyWaitedForBoot":Z
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 97
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can not wait for boot to complete since you run me on the UI thread. The UI thread is used to notify about boot completed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v3

    .line 103
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 109
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.class Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;
.super Landroid/content/BroadcastReceiver;
.source "RealBootCompletedWaiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;->waitForBootCompleted(JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;

.field final synthetic val$bootCompletedLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;->this$0:Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter;

    iput-object p2, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;->val$bootCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/RealBootCompletedWaiter$1;->val$bootCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    return-void
.end method

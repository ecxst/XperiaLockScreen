.class public interface abstract Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;
.super Ljava/lang/Object;
.source "BootCompletedWaiter.java"


# virtual methods
.method public abstract waitForBootCompleted(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

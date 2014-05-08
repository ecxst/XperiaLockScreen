.class public Lcom/sonymobile/lockscreen/util/ElapsedRealtimeClock;
.super Ljava/lang/Object;
.source "ElapsedRealtimeClock.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/util/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

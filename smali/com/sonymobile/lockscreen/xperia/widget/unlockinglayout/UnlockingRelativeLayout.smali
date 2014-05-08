.class public abstract Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "UnlockingRelativeLayout.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private mListener:Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;

.field private mUnlockStrategy:Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    sget-boolean v1, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "XperiaLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onTouchEvent() event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mUnlockStrategy:Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mUnlockStrategy:Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;

    invoke-virtual {v1, p1}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->isUnlockTriggered(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mListener:Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mListener:Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;

    invoke-interface {v1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;->onUnlock()V

    .line 70
    :goto_0
    const/4 v0, 0x1

    .line 92
    :goto_1
    return v0

    .line 68
    :cond_1
    const-string v1, "XperiaLockscreen"

    const-string v2, "Listener for unlocking not set in UnlockingRelativeLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 75
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 77
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 83
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_1

    .line 88
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 89
    const/4 v0, 0x1

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract onWallpaperTap(Landroid/view/MotionEvent;)V
.end method

.method public setListener(Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mListener:Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;

    .line 100
    return-void
.end method

.method public setUnlockStrategy(Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;)V
    .locals 0
    .param p1, "unlockStrategy"    # Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->mUnlockStrategy:Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;

    .line 51
    return-void
.end method

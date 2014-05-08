.class public Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;
.super Ljava/lang/Object;
.source "RealUserSwitch.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;


# instance fields
.field private mIsUserSwitching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;->mIsUserSwitching:Z

    .line 17
    return-void
.end method


# virtual methods
.method public isUserSwitching()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;->mIsUserSwitching:Z

    return v0
.end method

.method public setUserSwitching(Z)V
    .locals 0
    .param p1, "userSwitching"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;->mIsUserSwitching:Z

    .line 27
    return-void
.end method

.class Lcom/sonymobile/lockscreen/settings/Setup$RealOwnerInfoHelper;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/settings/Setup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealOwnerInfoHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/lockscreen/settings/Setup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/lockscreen/settings/Setup$1;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/Setup$RealOwnerInfoHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public isOwner()Z
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

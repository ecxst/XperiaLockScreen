.class final Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;
.super Landroid/os/AsyncTask;
.source "Setup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/settings/Setup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotateableWallpaperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/settings/Setup;


# direct methods
.method private constructor <init>(Lcom/sonymobile/lockscreen/settings/Setup;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/lockscreen/settings/Setup;Lcom/sonymobile/lockscreen/settings/Setup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/lockscreen/settings/Setup;
    .param p2, "x1"    # Lcom/sonymobile/lockscreen/settings/Setup$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;-><init>(Lcom/sonymobile/lockscreen/settings/Setup;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v3, 0x0

    aget-object v1, p1, v3

    check-cast v1, Landroid/net/Uri;

    .line 209
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .local v2, "width":I
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    .local v0, "height":I
    iget-object v3, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setLockscreenWallpaper(Landroid/content/ContentResolver;Landroid/net/Uri;II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    # invokes: Lcom/sonymobile/lockscreen/settings/Setup;->dismissWallpaperTaskDialog()V
    invoke-static {v0}, Lcom/sonymobile/lockscreen/settings/Setup;->access$200(Lcom/sonymobile/lockscreen/settings/Setup;)V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    const v1, 0x7f090005

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/lockscreen/settings/Setup;->access$300(Lcom/sonymobile/lockscreen/settings/Setup;I)V

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    # getter for: Lcom/sonymobile/lockscreen/settings/Setup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/lockscreen/settings/Setup;->access$400(Lcom/sonymobile/lockscreen/settings/Setup;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;-><init>(Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

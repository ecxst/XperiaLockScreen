.class Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;->this$1:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;->this$1:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    iget-object v0, v0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    # invokes: Lcom/sonymobile/lockscreen/settings/Setup;->dismissWallpaperTaskDialog()V
    invoke-static {v0}, Lcom/sonymobile/lockscreen/settings/Setup;->access$200(Lcom/sonymobile/lockscreen/settings/Setup;)V

    .line 228
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask$1;->this$1:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    iget-object v0, v0, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;->this$0:Lcom/sonymobile/lockscreen/settings/Setup;

    const/4 v1, -0x1

    # invokes: Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/lockscreen/settings/Setup;->access$300(Lcom/sonymobile/lockscreen/settings/Setup;I)V

    .line 229
    return-void
.end method

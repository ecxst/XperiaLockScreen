.class Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;
.super Ljava/lang/Object;
.source "ChoreographerFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;->runAfterCurrentFrameRendered(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;->this$0:Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;

    iput-object p2, p0, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    return-void
.end method

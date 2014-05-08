.class public Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;
.super Ljava/lang/Object;
.source "ChoreographerFrameRenderer.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/util/FrameRenderer;


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 20
    return-void
.end method


# virtual methods
.method public runAfterCurrentFrameRendered(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    new-instance v1, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer$1;-><init>(Lcom/sonymobile/lockscreen/util/ChoreographerFrameRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 30
    return-void
.end method

.class Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RealViewFader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/xperia/RealViewFader;->fadeOut(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/sonymobile/lockscreen/xperia/RealViewFader;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/xperia/RealViewFader;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->this$0:Lcom/sonymobile/lockscreen/xperia/RealViewFader;

    iput-object p2, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->mCanceled:Z

    .line 51
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->val$view:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;->mCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

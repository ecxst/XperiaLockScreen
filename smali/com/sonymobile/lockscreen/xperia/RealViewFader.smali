.class public Lcom/sonymobile/lockscreen/xperia/RealViewFader;
.super Ljava/lang/Object;
.source "RealViewFader.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/xperia/ViewFader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fadeIn(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 71
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    if-lez p2, :cond_1

    .line 74
    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 75
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 78
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 82
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public fadeOut(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 39
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 40
    if-lez p2, :cond_1

    .line 41
    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 42
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 43
    new-instance v3, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;

    invoke-direct {v3, p0, v2}, Lcom/sonymobile/lockscreen/xperia/RealViewFader$1;-><init>(Lcom/sonymobile/lockscreen/xperia/RealViewFader;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 61
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 62
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 66
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

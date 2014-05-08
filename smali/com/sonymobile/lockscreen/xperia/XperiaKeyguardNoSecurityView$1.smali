.class Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView$1;
.super Ljava/lang/Object;
.source "XperiaKeyguardNoSecurityView.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->onDependenciesSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView$1;->this$0:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1
    .param p1, "vs"    # Landroid/view/ViewStub;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView$1;->this$0:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    # getter for: Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->access$000(Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

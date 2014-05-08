.class public Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;
.super Lcom/sonymobile/lockscreen/environment/ExternalKeyguardSecurityView;
.source "XperiaKeyguardNoSecurityView.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBouncerIsShowing:Z

.field private mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

.field private mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

.field private mLetTouchesThrough:Z

.field private mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

.field private mViewsToAnimate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;-><init>(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;Lcom/sonymobile/lockscreen/xperia/ViewFader;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/lockscreen/environment/ExternalKeyguardSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;Lcom/sonymobile/lockscreen/xperia/ViewFader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;
    .param p3, "keyguardBackgroundView"    # Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;
    .param p4, "viewFader"    # Lcom/sonymobile/lockscreen/xperia/ViewFader;
    .param p5, "letTouchesThrough"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->setDependencies(Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;Lcom/sonymobile/lockscreen/xperia/ViewFader;Z)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    return-object v0
.end method

.method private applyLayoutChangesRecursive(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 307
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v3, p1

    .line 309
    check-cast v3, Landroid/widget/TextView;

    .line 310
    .local v3, "textView":Landroid/widget/TextView;
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 321
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 322
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 323
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    move-object v4, p1

    .line 324
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->applyLayoutChangesRecursive(Landroid/view/View;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private onDependenciesSet()V
    .locals 6

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "initializer":Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;
    iget-object v4, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    invoke-interface {v4}, Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;->getViewStubInitializer()Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;

    move-result-object v2

    .line 144
    :cond_0
    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 145
    .local v3, "multiSimCarrierStub":Landroid/view/ViewStub;
    if-eqz v3, :cond_1

    .line 146
    new-instance v4, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView$1;-><init>(Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 154
    if-eqz v2, :cond_1

    .line 155
    invoke-interface {v2, v3}, Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;->initializeMultiSimStub(Landroid/view/ViewStub;)V

    .line 163
    :cond_1
    const v4, 0x7f0b0007

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 164
    .local v1, "carrierTextStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_4

    .line 165
    if-eqz v2, :cond_2

    .line 166
    invoke-interface {v2, v1}, Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;->initializeCarrierTextStub(Landroid/view/ViewStub;)V

    .line 176
    :cond_2
    :goto_0
    const v4, 0x7f0b0001

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 177
    .local v0, "carrierMessageArea":Landroid/view/ViewStub;
    if-eqz v0, :cond_5

    .line 178
    if-eqz v2, :cond_3

    .line 179
    invoke-interface {v2, v0}, Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;->initializeMessageAreaStub(Landroid/view/ViewStub;)V

    .line 189
    :cond_3
    :goto_1
    return-void

    .line 173
    .end local v0    # "carrierMessageArea":Landroid/view/ViewStub;
    :cond_4
    const-string v4, "XperiaLockscreen"

    const-string v5, "No CarrierText ViewStub found in XperiaKeyguardNoSecurityView."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .restart local v0    # "carrierMessageArea":Landroid/view/ViewStub;
    :cond_5
    const-string v4, "XperiaLockscreen"

    const-string v5, "No CarrierText ViewStub found in XperiaKeyguardNoSecurityView."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transformCoordinates(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 282
    .local v2, "xYArray":[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    invoke-static {p0, v4, v5, v2}, Lcom/sonymobile/lockscreen/util/ViewUtils;->transformXCoordinateToOtherView(Landroid/view/View;FLandroid/view/View;[I)F

    move-result v1

    .line 284
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    invoke-static {p0, v4, v5, v2}, Lcom/sonymobile/lockscreen/util/ViewUtils;->transformYCoordinateToOtherView(Landroid/view/View;FLandroid/view/View;[I)F

    move-result v3

    .line 286
    .local v3, "y":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 287
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 288
    return-object v0
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mBouncerIsShowing:Z

    .line 233
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/lockscreen/xperia/ViewFader;->fadeIn(Ljava/util/ArrayList;I)V

    .line 236
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->applyLayoutChangesRecursive(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 333
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-boolean v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mLetTouchesThrough:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mBouncerIsShowing:Z

    if-nez v2, :cond_1

    .line 244
    const/4 v0, 0x0

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 253
    .local v0, "result":Z
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    if-eqz v2, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->transformCoordinates(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 255
    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    invoke-virtual {v2, v1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 256
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public onUnlock()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;->getKeyguardDismisser()Lcom/sonymobile/lockscreen/environment/ExternalKeyguardDismisser;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/environment/ExternalKeyguardDismisser;->dismissNoSecurityKeyguard()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "XperiaLockscreen"

    const-string v1, "Unable to dismiss keyguard since the keyguard component environment is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public setDependencies(Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;Lcom/sonymobile/lockscreen/xperia/ViewFader;Z)V
    .locals 2
    .param p1, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;
    .param p2, "keyguardBackgroundView"    # Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;
    .param p3, "viewFader"    # Lcom/sonymobile/lockscreen/xperia/ViewFader;
    .param p4, "letTouchesThrough"    # Z

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .line 117
    iput-object p2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    .line 118
    iput-boolean p4, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mLetTouchesThrough:Z

    .line 120
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->setAllowUnlock(Z)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->setColorOverlayEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mKeyguardBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    invoke-virtual {v0, p0}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->setListener(Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingListener;)V

    .line 130
    :cond_0
    iput-object p3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

    .line 131
    iput-boolean p4, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mLetTouchesThrough:Z

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->onDependenciesSet()V

    .line 134
    return-void
.end method

.method public showBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mBouncerIsShowing:Z

    .line 225
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewFader:Lcom/sonymobile/lockscreen/xperia/ViewFader;

    iget-object v1, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->mViewsToAnimate:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/lockscreen/xperia/ViewFader;->fadeOut(Ljava/util/ArrayList;I)V

    .line 228
    :cond_0
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

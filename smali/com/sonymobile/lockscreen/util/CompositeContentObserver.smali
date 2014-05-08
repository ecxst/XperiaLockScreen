.class public Lcom/sonymobile/lockscreen/util/CompositeContentObserver;
.super Landroid/database/ContentObserver;
.source "CompositeContentObserver.java"


# instance fields
.field private mContentObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/util/CompositeContentObserver;->mContentObservers:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/sonymobile/lockscreen/util/CompositeContentObserver;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 71
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 75
    .end local v0    # "contentObserver":Landroid/database/ContentObserver;
    :cond_1
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/CompositeContentObserver;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/util/CompositeContentObserver;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

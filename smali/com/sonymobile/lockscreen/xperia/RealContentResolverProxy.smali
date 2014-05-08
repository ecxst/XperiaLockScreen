.class public Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;
.super Ljava/lang/Object;
.source "RealContentResolverProxy.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/util/ContentResolverProxy;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

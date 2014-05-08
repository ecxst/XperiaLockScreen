.class public interface abstract Lcom/sonymobile/lockscreen/util/ContentResolverProxy;
.super Ljava/lang/Object;
.source "ContentResolverProxy.java"


# virtual methods
.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

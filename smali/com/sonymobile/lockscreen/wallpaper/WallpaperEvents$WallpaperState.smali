.class public final enum Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;
.super Ljava/lang/Enum;
.source "WallpaperEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

.field public static final enum STATE_HOME:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

.field public static final enum STATE_LOCKSCREEN:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

.field public static final enum STATE_UNLOCKING:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    const-string v1, "STATE_LOCKSCREEN"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_LOCKSCREEN:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .line 19
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    const-string v1, "STATE_UNLOCKING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_UNLOCKING:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .line 20
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    const-string v1, "STATE_HOME"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_HOME:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_LOCKSCREEN:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_UNLOCKING:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_HOME:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->$VALUES:[Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->$VALUES:[Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    return-object v0
.end method

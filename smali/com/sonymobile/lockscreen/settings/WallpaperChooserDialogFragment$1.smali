.class Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

.field final synthetic val$gallery:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    # invokes: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->selectWallpaper(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$000(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;I)V

    .line 176
    return-void
.end method

.class Landroid/app/WallpaperManager$Globals$1;
.super Landroid/os/Handler;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager$Globals;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 193
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v2, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/app/WallpaperManager$Globals;->access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 200
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v2, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/app/WallpaperManager$Globals;->access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 201
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

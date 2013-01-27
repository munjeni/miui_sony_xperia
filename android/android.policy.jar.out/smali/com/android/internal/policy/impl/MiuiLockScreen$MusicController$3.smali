.class Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1996
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2600(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2000
    .local v0, action:Ljava/lang/String;
    const-string v3, "playing"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2001
    .local v2, isPlaying:Z
    if-eqz v2, :cond_0

    .line 2004
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2005
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, extra:Ljava/lang/String;
    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2007
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    .line 2008
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2800(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    goto :goto_0

    .line 2009
    :cond_2
    const-string v3, "meta_changed_album"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2010
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 2012
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2013
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    .line 2014
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setAlbumInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2900(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    goto :goto_0

    .line 2015
    :cond_4
    const-string v3, "com.miui.player.refreshprogress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2016
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    const-string v4, "blocking"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mIsOnlineSongBlocking:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$3002(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Z)Z

    goto :goto_0

    .line 2017
    :cond_5
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$3100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2022
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    .line 2023
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2800(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

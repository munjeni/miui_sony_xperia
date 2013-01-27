.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, action:Ljava/lang/String;
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .local v7, device:Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 106
    const-string v18, "android.bluetooth.adapter.extra.STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 108
    .local v16, state:I
    packed-switch v16, :pswitch_data_0

    .line 218
    .end local v16           #state:I
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v16       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 113
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 116
    .end local v16           #state:I
    :cond_1
    const-string v18, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 120
    .restart local v16       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v7, v1, v2}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 122
    .end local v16           #state:I
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 123
    :cond_3
    const-string v18, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 124
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 125
    .local v17, streamType:I
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 128
    .local v15, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 129
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, address:Ljava/lang/String;
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 132
    .local v11, newVolLevel:I
    const-string v18, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 134
    .local v12, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, path:Ljava/lang/String;
    if-le v11, v12, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 137
    :cond_4
    if-ge v11, v12, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 142
    .end local v5           #address:Ljava/lang/String;
    .end local v11           #newVolLevel:I
    .end local v12           #oldVolLevel:I
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v17           #streamType:I
    :cond_5
    const-string v18, "com.android.music.metachanged"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_8

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :cond_8
    const-string v18, "id"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 153
    .local v8, extra:J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_9

    .line 154
    const-wide/16 v8, 0x0

    .line 155
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    const-string v18, "ListSize"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 157
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_a

    .line 158
    const-wide/16 v8, 0x0

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    const-string v18, "duration"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 161
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_b

    .line 162
    const-wide/16 v8, 0x0

    .line 163
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    const-string/jumbo v18, "position"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 165
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_c

    .line 166
    const-wide/16 v8, 0x0

    .line 167
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v8, v9}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;J)J

    .line 169
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Meta data info is trackname: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " artist: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mMediaNumber: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mediaCount "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mPostion "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " album: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "duration "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 174
    .restart local v13       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v13, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    goto :goto_1

    .line 177
    .end local v8           #extra:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #path:Ljava/lang/String;
    :cond_d
    const-string v18, "com.android.music.playstatechanged"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 178
    const-string/jumbo v18, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, currentTrackName:Ljava/lang/String;
    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v6}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_e

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_f

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_10

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    :cond_10
    const-string v18, "id"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 190
    .restart local v8       #extra:J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_11

    .line 191
    const-wide/16 v8, 0x0

    .line 192
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    const-string v18, "ListSize"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 194
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_12

    .line 195
    const-wide/16 v8, 0x0

    .line 196
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    const-string v18, "duration"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 198
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_13

    .line 199
    const-wide/16 v8, 0x0

    .line 200
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    const-string/jumbo v18, "position"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 202
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_14

    .line 203
    const-wide/16 v8, 0x0

    .line 204
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v8, v9}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;J)J

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 206
    .restart local v13       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto :goto_2

    .line 208
    .end local v8           #extra:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #path:Ljava/lang/String;
    :cond_15
    const-string/jumbo v18, "playing"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 209
    .local v14, playStatus:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "position"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v18 .. v20}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;J)J

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v18 .. v20}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;J)J

    .line 212
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v14, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;I)I

    .line 213
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PlayState changed "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 215
    .restart local v13       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v13, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    goto :goto_3

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

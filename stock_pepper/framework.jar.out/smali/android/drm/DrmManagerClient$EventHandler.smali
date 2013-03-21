.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 125
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 126
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, event:Landroid/drm/DrmEvent;
    const/4 v6, 0x0

    .line 132
    .local v6, error:Landroid/drm/DrmErrorEvent;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 180
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown message type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/drm/DrmInfo;

    .line 137
    .local v2, drmInfo:Landroid/drm/DrmInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    #calls: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v13, v14, v2}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v11

    .line 139
    .local v11, status:Landroid/drm/DrmInfoStatus;
    const-string v13, "drm_info_status_object"

    invoke-virtual {v1, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v13, "drm_info_object"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz v11, :cond_2

    const/4 v13, 0x1

    iget v14, v11, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v13, v14, :cond_2

    .line 143
    new-instance v7, Landroid/drm/DrmEvent;

    .end local v7           #event:Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v15, v11, Landroid/drm/DrmInfoStatus;->infoType:I

    #calls: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static {v14, v15}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v7, v13, v14, v15, v1}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 183
    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v11           #status:Landroid/drm/DrmInfoStatus;
    .restart local v7       #event:Landroid/drm/DrmEvent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v13

    if-eqz v13, :cond_1

    if-eqz v7, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v13, v14, v7}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v13

    if-eqz v13, :cond_0

    if-eqz v6, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v13, v14, v6}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    .line 146
    .restart local v2       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v11       #status:Landroid/drm/DrmInfoStatus;
    :cond_2
    if-eqz v11, :cond_4

    iget v9, v11, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 148
    .local v9, infoType:I
    :goto_2
    if-eqz v11, :cond_5

    .line 150
    :try_start_0
    iget-object v13, v11, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v13}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v10

    .line 151
    .local v10, mData:[B
    if-eqz v10, :cond_5

    .line 152
    new-instance v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 153
    .local v12, statusData:Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, errInfoArray:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v13, v5

    if-ge v8, v13, :cond_5

    .line 155
    aget-object v13, v5, v8

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, errInfo:[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-lt v13, v14, :cond_3

    .line 157
    const/4 v13, 0x0

    aget-object v13, v4, v13

    const/4 v14, 0x1

    aget-object v14, v4, v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 146
    .end local v4           #errInfo:[Ljava/lang/String;
    .end local v5           #errInfoArray:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #infoType:I
    .end local v10           #mData:[B
    .end local v12           #statusData:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v9

    goto :goto_2

    .line 161
    .restart local v9       #infoType:I
    :catch_0
    move-exception v3

    .line 162
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UnsupportedEncodingType :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    new-instance v6, Landroid/drm/DrmErrorEvent;

    .end local v6           #error:Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #calls: Landroid/drm/DrmManagerClient;->getErrorType(I)I
    invoke-static {v14, v9}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v6, v13, v14, v15, v1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 168
    .restart local v6       #error:Landroid/drm/DrmErrorEvent;
    goto/16 :goto_1

    .line 171
    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v9           #infoType:I
    .end local v11           #status:Landroid/drm/DrmInfoStatus;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    #calls: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static {v13, v14}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v13

    if-nez v13, :cond_6

    .line 172
    new-instance v7, Landroid/drm/DrmEvent;

    .end local v7           #event:Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    const/16 v14, 0x3e9

    const/4 v15, 0x0

    invoke-direct {v7, v13, v14, v15}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v7       #event:Landroid/drm/DrmEvent;
    goto/16 :goto_1

    .line 174
    :cond_6
    new-instance v6, Landroid/drm/DrmErrorEvent;

    .end local v6           #error:Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    const/16 v14, 0x7d7

    const/4 v15, 0x0

    invoke-direct {v6, v13, v14, v15}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 177
    .restart local v6       #error:Landroid/drm/DrmErrorEvent;
    goto/16 :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBIPProxyEnabled:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field private mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

.field private mEventList:[B

.field private mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mLoadOptionalIconFailed:Z

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 44
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 45
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 46
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 47
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 48
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    .line 49
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    .line 50
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 205
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 206
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 207
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 208
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, len:I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    .line 212
    const-string/jumbo v1, "ro.semc.sim.bip.enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    .line 214
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 216
    :pswitch_1
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0

    .line 224
    :pswitch_3
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 226
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 229
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v1, :cond_1

    .line 230
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    if-lez v0, :cond_0

    .line 233
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 235
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/SetEventList;->values()[Lcom/android/internal/telephony/cat/SetEventList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    goto :goto_0

    .line 239
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/SetEventList;->values()[Lcom/android/internal/telephony/cat/SetEventList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 6
    .parameter "cmdParams"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 44
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 45
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 46
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 47
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 48
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    .line 49
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    .line 50
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 96
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 97
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadOptionalIconFailed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    .line 99
    const-string/jumbo v2, "ro.semc.sim.bip.enabled"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    .line 100
    sget-object v2, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 202
    .end local p1
    :goto_0
    return-void

    .line 103
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 111
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 115
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto :goto_0

    .restart local p1
    :pswitch_3
    move-object v2, p1

    .line 118
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 119
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 120
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v1, p1

    .line 124
    check-cast v1, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 125
    .local v1, params:Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v2, v1, Lcom/android/internal/telephony/cat/PlayToneParams;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 126
    iget-object v2, v1, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 129
    .end local v1           #params:Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 130
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 131
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 134
    .restart local p1
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 135
    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPEN_CHANNEL mTextMsg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    iput v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    iput v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    .restart local p1
    :cond_0
    :pswitch_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1
    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 158
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 163
    .restart local p1
    :cond_1
    :pswitch_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v2, v2, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    iput v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1
    iget v3, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 172
    .restart local p1
    :cond_2
    :pswitch_9
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_3

    .line 173
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v2, v2, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    iput v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 175
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 181
    .restart local p1
    :cond_3
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_4

    .line 182
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    :cond_4
    move-object v0, p1

    .line 187
    check-cast v0, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 188
    .local v0, param:Lcom/android/internal/telephony/cat/BIPClientParams;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 192
    .end local v0           #param:Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_b
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v2, :cond_5

    move-object v2, p1

    .line 193
    check-cast v2, Lcom/android/internal/telephony/cat/EventListParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/EventListParams;->eventList:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    .line 194
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/EventListParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/EventListParams;->eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    goto/16 :goto_0

    .line 197
    .restart local p1
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/SetEventListParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getCommandQualifier()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    return-object v0
.end method

.method public getEventList()[B
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadOptionalIconFailed()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    return v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 251
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadOptionalIconFailed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 252
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 265
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBIPProxyEnabled:Z

    if-eqz v1, :cond_2

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, len:I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    array-length v0, v1

    .line 270
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    if-lez v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/SetEventList;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 276
    .end local v0           #len:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/cat/SetEventList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/SetEventList;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

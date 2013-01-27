.class final enum Lmiui/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lmiui/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lmiui/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lmiui/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lmiui/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lmiui/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lmiui/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x60c01a1

    const v5, 0x6020156

    const v6, 0x6020156

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    .line 132
    new-instance v3, Lmiui/view/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x60c01a2

    const v8, 0x602015b

    const v9, 0x602015c

    move v5, v11

    move v6, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    .line 137
    new-instance v3, Lmiui/view/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0x60c01a3

    const v8, 0x602015a

    const v9, 0x602015a

    move v5, v12

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    .line 142
    new-instance v3, Lmiui/view/VolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const v7, 0x60c01a6

    const v8, 0x6020154

    const v9, 0x6020155

    move v5, v13

    move v6, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    .line 147
    new-instance v3, Lmiui/view/VolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const v7, 0x60c01a4

    const v8, 0x6020020

    const v9, 0x6020020

    move v5, v14

    move v6, v13

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    .line 152
    new-instance v3, Lmiui/view/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const v7, 0x60c01a5

    const v8, 0x6020158

    const v9, 0x6020159

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lmiui/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel$StreamResources;->$VALUES:[Lmiui/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 167
    iput p4, p0, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    .line 168
    iput p5, p0, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    .line 169
    iput p6, p0, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 170
    iput-boolean p7, p0, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/view/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    const-class v0, Lmiui/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lmiui/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lmiui/view/VolumePanel$StreamResources;->$VALUES:[Lmiui/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lmiui/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/view/VolumePanel$StreamResources;

    return-object v0
.end method

.class public abstract Lmiui/app/screenelement/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ActionCommand$1;,
        Lmiui/app/screenelement/ActionCommand$AnimationProperty;,
        Lmiui/app/screenelement/ActionCommand$VisibilityProperty;,
        Lmiui/app/screenelement/ActionCommand$PropertyCommand;,
        Lmiui/app/screenelement/ActionCommand$DelayCommand;,
        Lmiui/app/screenelement/ActionCommand$ConditionCommand;,
        Lmiui/app/screenelement/ActionCommand$IntentCommand;,
        Lmiui/app/screenelement/ActionCommand$VariableBinderCommand;,
        Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;,
        Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$WifiStateTracker;,
        Lmiui/app/screenelement/ActionCommand$StateTracker;,
        Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;,
        Lmiui/app/screenelement/ActionCommand$RingModeCommand;,
        Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;,
        Lmiui/app/screenelement/ActionCommand$NotificationReceiver;,
        Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mContext:Lmiui/app/screenelement/ScreenContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lmiui/app/screenelement/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 1045
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lmiui/app/screenelement/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand;
    .locals 4
    .parameter "context"
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1017
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-object v2

    .line 1020
    :cond_1
    new-instance v1, Lmiui/app/screenelement/util/Variable;

    invoke-direct {v1, p2}, Lmiui/app/screenelement/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v1, targetObj:Lmiui/app/screenelement/util/Variable;
    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1022
    invoke-static {p0, p1, p2, p3}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->create(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    move-result-object v2

    goto :goto_0

    .line 1025
    :cond_2
    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, property:Ljava/lang/String;
    const-string v3, "RingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1027
    new-instance v2, Lmiui/app/screenelement/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p3}, Lmiui/app/screenelement/ActionCommand$RingModeCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_3
    const-string v3, "Wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1029
    new-instance v2, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p3}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_4
    const-string v3, "Data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1031
    new-instance v2, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p3}, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_5
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1033
    new-instance v2, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p3}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_6
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    new-instance v2, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p3}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/ActionCommand;
    .locals 11
    .parameter "context"
    .parameter "ele"
    .parameter "root"

    .prologue
    const-wide/16 v9, 0x0

    .line 989
    if-nez p1, :cond_0

    .line 990
    const/4 v3, 0x0

    .line 1013
    :goto_0
    return-object v3

    .line 992
    :cond_0
    const-string v8, "condition"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    .line 993
    .local v0, condition:Lmiui/app/screenelement/data/Expression;
    const-string v8, "delay"

    invoke-static {p1, v8, v9, v10}, Lmiui/app/screenelement/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v1

    .line 994
    .local v1, delay:J
    const/4 v3, 0x0

    .line 995
    .local v3, ret:Lmiui/app/screenelement/ActionCommand;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 996
    .local v5, tag:Ljava/lang/String;
    const-string v8, "Command"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 997
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 998
    .local v6, target:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 999
    .local v7, value:Ljava/lang/String;
    invoke-static {p0, p2, v6, v7}, Lmiui/app/screenelement/ActionCommand;->create(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v3

    move-object v4, v3

    .line 1007
    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .local v4, ret:Lmiui/app/screenelement/ActionCommand;
    :goto_1
    cmp-long v8, v1, v9

    if-lez v8, :cond_1

    if-eqz v4, :cond_1

    .line 1008
    new-instance v3, Lmiui/app/screenelement/ActionCommand$DelayCommand;

    invoke-direct {v3, v4, v1, v2}, Lmiui/app/screenelement/ActionCommand$DelayCommand;-><init>(Lmiui/app/screenelement/ActionCommand;J)V

    .end local v4           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    move-object v4, v3

    .line 1010
    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v4       #ret:Lmiui/app/screenelement/ActionCommand;
    :cond_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 1011
    new-instance v3, Lmiui/app/screenelement/ActionCommand$ConditionCommand;

    invoke-direct {v3, v4, v0}, Lmiui/app/screenelement/ActionCommand$ConditionCommand;-><init>(Lmiui/app/screenelement/ActionCommand;Lmiui/app/screenelement/data/Expression;)V

    .end local v4           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_0

    .line 1000
    :cond_2
    const-string v8, "VariableCommand"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1001
    new-instance v3, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    invoke-direct {v3, p0, p1}, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v4       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_1

    .line 1002
    .end local v4           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    :cond_3
    const-string v8, "BinderCommand"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1003
    new-instance v3, Lmiui/app/screenelement/ActionCommand$VariableBinderCommand;

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    invoke-direct {v3, p0, p2, p1}, Lmiui/app/screenelement/ActionCommand$VariableBinderCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v4       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_1

    .line 1004
    .end local v4           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    :cond_4
    const-string v8, "IntentCommand"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1005
    new-instance v3, Lmiui/app/screenelement/ActionCommand$IntentCommand;

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    invoke-direct {v3, p0, p2, p1}, Lmiui/app/screenelement/ActionCommand$IntentCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v4       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_1

    :cond_5
    move-object v3, v4

    .end local v4           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v3       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_0

    :cond_6
    move-object v4, v3

    .end local v3           #ret:Lmiui/app/screenelement/ActionCommand;
    .restart local v4       #ret:Lmiui/app/screenelement/ActionCommand;
    goto :goto_1
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1063
    return-void
.end method

.method protected getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 1048
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand;->doPerform()V

    .line 1049
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 1050
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

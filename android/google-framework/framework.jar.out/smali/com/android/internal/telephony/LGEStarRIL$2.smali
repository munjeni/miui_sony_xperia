.class Lcom/android/internal/telephony/LGEStarRIL$2;
.super Landroid/content/BroadcastReceiver;
.source "LGEStarRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGEStarRIL;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGEStarRIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGEStarRIL;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/LGEStarRIL$2;->this$0:Lcom/android/internal/telephony/LGEStarRIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "RILJ"

    const-string v2, "Enabling FAST_DORMANCY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v1, 0x117

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 121
    .local v0, rrSPR:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/LGEStarRIL$2;->this$0:Lcom/android/internal/telephony/LGEStarRIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 125
    .end local v0           #rrSPR:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    return-void
.end method

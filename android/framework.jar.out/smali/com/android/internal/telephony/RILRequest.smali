.class Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/android/internal/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/internal/telephony/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sput v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 77
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .parameter "request"
    .parameter "result"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 99
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 100
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    sput-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 101
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 102
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 104
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/internal/telephony/RILRequest;

    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    .line 110
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_1
    sget v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    iput v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 112
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    iput p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 114
    iput-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 117
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 118
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 112
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 122
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 149
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .parameter "error"
    .parameter "ret"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 179
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 192
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 136
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 137
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 138
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v2, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, sn:Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, s:I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 165
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

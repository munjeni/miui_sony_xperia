.class Lcom/android/calculator2/Persist;
.super Ljava/lang/Object;
.source "Persist.java"


# instance fields
.field history:Lcom/android/calculator2/History;

.field private mContext:Landroid/content/Context;

.field private mDeleteMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/calculator2/History;

    invoke-direct {v0}, Lcom/android/calculator2/History;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    .line 39
    iput-object p1, p0, Lcom/android/calculator2/Persist;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getDeleteMode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/calculator2/Persist;->mDeleteMode:I

    return v0
.end method

.method public load()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 52
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/calculator2/Persist;->mContext:Landroid/content/Context;

    const-string v5, "calculator.data"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    .local v2, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v1, in:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 55
    .local v3, version:I
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/calculator2/Persist;->mDeleteMode:I

    .line 60
    :cond_0
    new-instance v4, Lcom/android/calculator2/History;

    invoke-direct {v4, v3, v1}, Lcom/android/calculator2/History;-><init>(ILjava/io/DataInput;)V

    iput-object v4, p0, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    .line 61
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 67
    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #version:I
    :goto_0
    return-void

    .line 57
    .restart local v1       #in:Ljava/io/DataInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #version:I
    :cond_1
    if-le v3, v6, :cond_0

    .line 58
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #version:I
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calculator2/Calculator;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calculator2/Calculator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save()V
    .locals 6

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/calculator2/Persist;->mContext:Landroid/content/Context;

    const-string v4, "calculator.data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 72
    .local v1, os:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v2, out:Ljava/io/DataOutputStream;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget v3, p0, Lcom/android/calculator2/Persist;->mDeleteMode:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v3, p0, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    invoke-virtual {v3, v2}, Lcom/android/calculator2/History;->write(Ljava/io/DataOutput;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #os:Ljava/io/OutputStream;
    .end local v2           #out:Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calculator2/Calculator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeleteMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/calculator2/Persist;->mDeleteMode:I

    .line 44
    return-void
.end method

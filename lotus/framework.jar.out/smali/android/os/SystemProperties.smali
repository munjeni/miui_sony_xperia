.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final OMAP_COMPAT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final OMAP_ENHANCEMENT:Z = false

.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field public static final QCOM_HARDWARE:Z

.field public static final QCOM_HDMI_OUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "com.ti.omap_enhancement"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    .line 34
    const-string v0, "com.ti.omap_compat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/SystemProperties;->OMAP_COMPAT:Z

    .line 37
    const-string v0, "com.qc.hardware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/SystemProperties;->QCOM_HARDWARE:Z

    .line 38
    const-string v0, "com.qc.hdmi_out"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/SystemProperties;->QCOM_HDMI_OUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "def"

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "def"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "def"

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_int(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "def"

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_long(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "def"

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key.length > 31"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, chunks:I
    if-nez v0, :cond_1

    .line 153
    .end local p1
    :goto_0
    return-object p1

    .line 149
    .restart local p1
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static native native_get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_get_boolean(Ljava/lang/String;Z)Z
.end method

.method private static native native_get_int(Ljava/lang/String;I)I
.end method

.method private static native native_get_long(Ljava/lang/String;J)J
.end method

.method private static native native_set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length > 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-le v0, v1, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "val.length > 91"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static setLongString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "val"

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x1f

    if-le v4, v5, :cond_0

    .line 162
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "key.length > 31"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, chunks:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x5c

    add-int/lit8 v0, v4, 0x1

    .line 168
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->native_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-lez v0, :cond_3

    .line 170
    const/4 v2, 0x1

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, start:I
    :goto_0
    if-gt v2, v0, :cond_3

    .line 171
    add-int/lit8 v1, v3, 0x5b

    .line 172
    .local v1, end:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v1, v4, :cond_2

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 175
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->native_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move v3, v1

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #start:I
    :cond_3
    return-void
.end method

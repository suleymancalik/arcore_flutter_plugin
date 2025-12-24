# ARCore ve Sceneform loglarını kapat
# Android Log sınıfının tüm metodlarını kaldır (sadece release build'de)
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
    public static *** w(...);
    public static *** e(...);
    public static *** println(...);
}

# ARCore kütüphanesindeki log çağrılarını kaldır
-assumenosideeffects class com.google.ar.core.** {
    <methods>;
}

# Sceneform kütüphanesindeki log çağrılarını kaldır
-assumenosideeffects class com.google.ar.sceneform.** {
    <methods>;
}

